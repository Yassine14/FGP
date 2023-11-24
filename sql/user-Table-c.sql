use FGPD;

 
CREATE TABLE [dbo].[User] (
    [user_id] INT IDENTITY(1,1) PRIMARY KEY,
    [username] NVARCHAR(50) NOT NULL,
	[firstname] NVARCHAR(50) NOT NULL,
	[lastname] NVARCHAR(50) NOT NULL,
    [password_hash] NVARCHAR(255) NOT NULL,
    [email] NVARCHAR(100),
    [gender] NVARCHAR(10) CHECK (gender IN ('Male', 'Female', 'Other')),
    [favorite_position] NVARCHAR(20) CHECK (favorite_position IN ('Goalie', 'Defender', 'Midfielder', 'Forward')),
    [profile_img] NVARCHAR(255), -- Store path or link to profile image
    [timezone] NVARCHAR(50),
    [address] NVARCHAR(100),
    [hide_attending_games] BIT DEFAULT 1, -- Boolean column, default true (1 for true, 0 for false)
    [created_at] DATETIME DEFAULT GETDATE()
);
