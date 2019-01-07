.class public Lcom/alibaba/alimei/emailcommon/CommonAccount;
.super Ljava/lang/Object;
.source "CommonAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/emailcommon/CommonAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enableSasl:Z

.field private isSsl:Z

.field private mail:Ljava/lang/String;

.field private oauthToken:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private smtpPassword:Ljava/lang/String;

.field private smtpPort:Ljava/lang/String;

.field private smtpSecurityType:I

.field private smtpServer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/alibaba/alimei/emailcommon/CommonAccount$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/emailcommon/CommonAccount$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->mail:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->password:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->server:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->port:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->isSsl:Z

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpServer:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpPort:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpSecurityType:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->enableSasl:Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->oauthToken:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "mail"    # Ljava/lang/String;
    .param p2, "incomingPassword"    # Ljava/lang/String;
    .param p3, "server"    # Ljava/lang/String;
    .param p4, "port"    # Ljava/lang/String;
    .param p5, "isSsl"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->mail:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->password:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->server:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->port:Ljava/lang/String;

    .line 30
    iput-boolean p5, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->isSsl:Z

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method protected final getBooleanValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 169
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getIntValue(Z)I
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->mail:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->oauthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->port:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getSmtpPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSmtpPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpPort:Ljava/lang/String;

    return-object v0
.end method

.method public getSmtpSecurityType()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpSecurityType:I

    return v0
.end method

.method public getSmtpServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpServer:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableSasl()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->enableSasl:Z

    return v0
.end method

.method public isSsl()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->isSsl:Z

    return v0
.end method

.method public setEnableSasl(Z)V
    .locals 0
    .param p1, "enableSasl"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->enableSasl:Z

    .line 118
    return-void
.end method

.method public setIsSsl(Z)V
    .locals 0
    .param p1, "isSsl"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->isSsl:Z

    .line 78
    return-void
.end method

.method public setMail(Ljava/lang/String;)V
    .locals 0
    .param p1, "mail"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->mail:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setOauthToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "oauthToken"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->oauthToken:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->password:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->port:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->server:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setSmtp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "server"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "smtpSecurityType"    # I

    .prologue
    .line 34
    iput-object p2, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpServer:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpPort:Ljava/lang/String;

    .line 36
    iput p4, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpSecurityType:I

    .line 37
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpPassword:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setSmtpPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "smtpPassword"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpPassword:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setSmtpPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "smtpPort"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpPort:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setSmtpSecurityType(I)V
    .locals 0
    .param p1, "smtpSecurityType"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpSecurityType:I

    .line 110
    return-void
.end method

.method public setSmtpServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "smtpServer"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpServer:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->mail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->port:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->isSsl:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->smtpSecurityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->enableSasl:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/CommonAccount;->oauthToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return-void
.end method
