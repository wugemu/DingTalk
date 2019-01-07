.class final Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$3;
.super Ljava/lang/Object;
.source "OrgIntroView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 323
    check-cast p1, Ljava/util/List;

    .line 1326
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;Ljava/util/List;)Ljava/util/List;

    .line 1327
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;Z)V

    .line 323
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 338
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 333
    return-void
.end method
