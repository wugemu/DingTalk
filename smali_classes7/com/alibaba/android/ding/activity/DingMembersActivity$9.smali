.class final Lcom/alibaba/android/ding/activity/DingMembersActivity$9;
.super Lcif;
.source "DingMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingMembersActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMembersActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMembersActivity;
    .param p2, "x0"    # I

    .prologue
    .line 416
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$9;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-direct {p0, p2}, Lcif;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 424
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$9;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->o(Lcom/alibaba/android/ding/activity/DingMembersActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 425
    const/4 v0, -0x1

    .line 427
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 0
    .param p1, "operationCode"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 420
    return-void
.end method
