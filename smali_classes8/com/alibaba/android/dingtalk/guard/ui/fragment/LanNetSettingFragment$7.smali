.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$7;
.super Ljava/lang/Object;
.source "LanNetSettingFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;
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
        "Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsw$b;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;Lbsw$b;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$7;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$7;->a:Lbsw$b;

    iput-wide p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$7;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 336
    check-cast p1, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;

    .line 1339
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$7;->a:Lbsw$b;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$7;->b:J

    invoke-interface {v0, v2, v3, p1}, Lbsw$b;->a(JLcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;)V

    .line 1340
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$7;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V

    .line 1341
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$7;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$7;->b:J

    invoke-static {v0, v2, v3, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;JLcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;)V

    .line 336
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 351
    const-string/jumbo v0, "LanNetSettingFragment"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "queryOrgApBindConfig exp code = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 347
    return-void
.end method
