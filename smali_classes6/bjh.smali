.class public final Lbjh;
.super Ljava/lang/Object;
.source "BasicUserObjectUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lchg;)Ljava/lang/String;
    .locals 4
    .param p0, "basicUserObject"    # Lchg;

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 17
    const-string/jumbo v0, ""

    .line 24
    :goto_0
    return-object v0

    .line 20
    :cond_0
    iget-wide v0, p0, Lchg;->e:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 21
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laxp$i;->ding_txt_sender_me:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lchg;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lchg;->f:Ljava/lang/String;

    goto :goto_0
.end method
