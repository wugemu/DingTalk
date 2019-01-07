.class public final Leaj;
.super Ljava/lang/Object;
.source "CmailHeaderObject.java"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "actionType"    # I
    .param p2, "localMailId"    # J
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "accountName"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Leaj;->a:I

    .line 16
    iput-wide p2, p0, Leaj;->b:J

    .line 17
    iput-object p4, p0, Leaj;->c:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Leaj;->d:Ljava/lang/String;

    .line 19
    return-void
.end method
