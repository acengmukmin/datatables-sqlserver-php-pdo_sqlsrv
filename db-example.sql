/* Example table */
CREATE TABLE [dbo].[employee](
	[employeeID] [varchar](30) NOT NULL,
	[employeeName] [varchar](200) NOT NULL,
	[salary] [money] NOT NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[employeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

/* create view and add a column which called 'row' */
CREATE VIEW vEmployee AS
SELECT
	ROW_NUMBER() OVER (ORDER BY employeeID) AS row,
	employeeID,
	employeeName,
	salary
FROM employee
