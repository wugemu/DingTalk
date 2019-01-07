.class final Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;
.super Ljava/lang/Object;
.source "SpaceFileCategoryHelper.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;Lgoa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgoa;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;Ljava/lang/String;Lgoa;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->c:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->b:Lgoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 147
    const-string/jumbo v0, "space_category_type"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v0, "space_category_current_space"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->b:Lgoa;

    iget-boolean v3, v3, Lgoa;->d:Z

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->b:Lgoa;

    iget-boolean v0, v0, Lgoa;->d:Z

    if-eqz v0, :cond_b

    .line 150
    const-string/jumbo v0, "space_id"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->b:Lgoa;

    iget-object v3, v3, Lgoa;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string/jumbo v0, "space_category_current_folderId"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->b:Lgoa;

    iget-object v3, v3, Lgoa;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string/jumbo v0, "space_path"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->b:Lgoa;

    iget-object v3, v3, Lgoa;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string/jumbo v0, "from_conversation"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->b:Lgoa;

    iget-boolean v3, v3, Lgoa;->h:Z

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    const-string/jumbo v0, "space_type"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->b:Lgoa;

    iget v3, v3, Lgoa;->e:I

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string/jumbo v0, "is_space_admin"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->b:Lgoa;

    iget-boolean v3, v3, Lgoa;->j:Z

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const-string/jumbo v0, "space_org_id"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->b:Lgoa;

    iget-wide v4, v3, Lgoa;->f:J

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 157
    const-string/jumbo v3, "space_category_from"

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->b:Lgoa;

    .line 1036
    iget-object v0, v4, Lgoa;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1037
    iget-object v0, v4, Lgoa;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/"

    iget-object v5, v4, Lgoa;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 1038
    :goto_0
    if-eqz v0, :cond_2

    iget v1, v4, Lgoa;->e:I

    if-ne v1, v2, :cond_2

    .line 1039
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->org_public_share:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_1
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :goto_2
    return-object p1

    :cond_1
    move v0, v1

    .line 1037
    goto :goto_0

    .line 1040
    :cond_2
    if-eqz v0, :cond_3

    iget v0, v4, Lgoa;->e:I

    if-ne v0, v6, :cond_3

    .line 1041
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->cspace_category_chat:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1043
    :cond_3
    iget-object v0, v4, Lgoa;->i:Ljava/lang/String;

    goto :goto_1

    .line 1045
    :cond_4
    iget-object v0, v4, Lgoa;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1046
    iget-object v0, v4, Lgoa;->c:Ljava/lang/String;

    .line 1047
    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1048
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1050
    :cond_5
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1051
    const/4 v5, -0x1

    if-eq v1, v5, :cond_6

    .line 1052
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1054
    :cond_6
    iget v0, v4, Lgoa;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    iget v0, v4, Lgoa;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    iget v0, v4, Lgoa;->e:I

    if-ne v0, v6, :cond_8

    .line 1055
    :cond_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->cspace_category_chat:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1056
    :cond_8
    iget v0, v4, Lgoa;->e:I

    if-ne v0, v2, :cond_9

    .line 1057
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->space_group_header_content:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1058
    :cond_9
    iget v0, v4, Lgoa;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1059
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->org_personal:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1063
    :cond_a
    const-string/jumbo v0, ""

    goto/16 :goto_1

    .line 159
    :cond_b
    const-string/jumbo v0, "space_org_id"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->b:Lgoa;

    iget-wide v2, v1, Lgoa;->f:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 160
    const-string/jumbo v0, "space_category_from"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;->b:Lgoa;

    iget-object v1, v1, Lgoa;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2
.end method
