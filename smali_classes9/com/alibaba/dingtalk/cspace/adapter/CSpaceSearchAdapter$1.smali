.class final Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;
.super Ljava/lang/Object;
.source "CSpaceSearchAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
        "Lgic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfzv;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;

.field final synthetic c:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;Lfzv;Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->f:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->a:Lfzv;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object p5, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 179
    check-cast p1, Lgic;

    .line 1182
    if-eqz p1, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->a:Lfzv;

    iget-object v2, p1, Lgic;->h:Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1186
    invoke-virtual {v0, v2, v3}, Lfzv;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 1187
    iget-object v2, p1, Lgic;->j:Ljava/lang/String;

    invoke-static {v2}, Lgqu;->a(Ljava/lang/String;)I

    move-result v2

    .line 1188
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->a:Lfzv;

    iget-object v4, p1, Lgic;->a:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lgic;->m:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v2, v5}, Lfzv;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1190
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->e:Landroid/widget/TextView;

    .line 1191
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1192
    :goto_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lfzw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 179
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 1191
    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 205
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 201
    return-void
.end method
