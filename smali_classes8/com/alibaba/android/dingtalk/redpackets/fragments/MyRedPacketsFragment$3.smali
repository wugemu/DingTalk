.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;
.super Ljava/lang/Object;
.source "MyRedPacketsFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    .prologue
    .line 146
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    iput p2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 146
    .line 1149
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 166
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;"
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "deleteRedPackRecord"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "deleteRedPackRecord exception code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 162
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;"
    return-void
.end method
