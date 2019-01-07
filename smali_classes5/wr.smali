.class public final Lwr;
.super Ljava/lang/Object;
.source "OutlookImapServer.java"

# interfaces
.implements Lwl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x5

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "INBOX"

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "Sent"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "Deleted"

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "Junk"

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "Drafts"

    return-object v0
.end method
