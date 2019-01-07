.class public final Lacp$b;
.super Ljava/lang/Object;
.source "MailDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2400
    const/4 v0, 0x0

    iput-object v0, p0, Lacp$b;->a:Ljava/lang/String;

    .line 2401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacp$b;->b:Z

    .line 1411
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "orgMail"    # Ljava/lang/String;
    .param p2, "isDistributed"    # Z

    .prologue
    .line 1404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1405
    iput-object p1, p0, Lacp$b;->a:Ljava/lang/String;

    .line 1406
    iput-boolean p2, p0, Lacp$b;->b:Z

    .line 1407
    return-void
.end method
