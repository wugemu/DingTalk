.class public final Lfbx;
.super Ljava/lang/Object;
.source "DisplayLatestView.java"

# interfaces
.implements Lfby;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 25
    iget v0, p0, Lfbx;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lfbx;->a:I

    .line 27
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->Q()V

    .line 29
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 33
    if-gtz p1, :cond_0

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lfbx;->a:I

    .line 35
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->Q()V

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lfbx;->a:I

    .line 41
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lfbx;->a:I

    .line 19
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lfbx;->a:I

    .line 47
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->Q()V

    .line 48
    return-void
.end method
