.class final Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;
.super Ljava/lang/Object;
.source "SelectOrgTypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 175
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;->a:Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-static {v4, v5}, Lcop;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 176
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-nez v3, :cond_0

    const-string/jumbo v2, ""

    .line 178
    .local v2, "s":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-class v4, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;

    invoke-static {v2, v4}, Lcoo;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 179
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3$1;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;>;"
    :goto_1
    return-void

    .line 176
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 185
    .restart local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3$2;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;Ljava/lang/Exception;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
