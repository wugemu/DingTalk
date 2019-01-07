.class final Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3$2;
.super Ljava/lang/Object;
.source "SelectOrgTypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3$2;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3$2;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3$2;->a:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method
