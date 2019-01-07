.class public final Lwo;
.super Ljava/lang/Object;
.source "MailAimcImapServer.java"

# interfaces
.implements Lwl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x9

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "INBOX"

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "Sent"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "Trash"

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "Junkmail"

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "Draft"

    return-object v0
.end method
