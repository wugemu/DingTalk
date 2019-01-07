.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$4;
.super Ljava/lang/Object;
.source "SendRandomRedPacketsFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$4;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$4;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    sget v1, Lcaj$f;->redpackets_member_limit:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "500"

    .line 164
    aput-object v3, v2, v4

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcms;->a(Ljava/lang/String;I)V

    .line 166
    return-void
.end method
