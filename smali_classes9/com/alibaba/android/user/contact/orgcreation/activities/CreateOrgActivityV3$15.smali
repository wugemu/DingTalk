.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$15;
.super Ljava/lang/Object;
.source "CreateOrgActivityV3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$15;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1309
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 1310
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lfuw;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1311
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$15;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    new-instance v3, Lfuw;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4}, Lfuw;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Lfuw;->a()Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 1316
    :goto_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$15$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$15$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$15;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1325
    .end local v0    # "context":Landroid/content/Context;
    :goto_1
    return-void

    .line 1313
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$15;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1322
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 1323
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
