.class final Lggc$1;
.super Ljava/lang/Object;
.source "SpaceRecentUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lggc;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/AbsListView;Landroid/widget/TextView;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

.field final synthetic b:Lgfw;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field final synthetic e:Landroid/widget/AbsListView;

.field final synthetic f:Landroid/widget/TextView;

.field final synthetic g:Lggf;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Lgfw;Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/AbsListView;Landroid/widget/TextView;Lggf;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lggc$1;->a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iput-object p2, p0, Lggc$1;->b:Lgfw;

    iput-object p3, p0, Lggc$1;->c:Landroid/app/Activity;

    iput-object p4, p0, Lggc$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object p5, p0, Lggc$1;->e:Landroid/widget/AbsListView;

    iput-object p6, p0, Lggc$1;->f:Landroid/widget/TextView;

    iput-object p7, p0, Lggc$1;->g:Lggf;

    iput-object p8, p0, Lggc$1;->h:Ljava/lang/String;

    iput-boolean p9, p0, Lggc$1;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 146
    check-cast p1, Ljava/lang/String;

    .line 1149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1150
    iget-object v0, p0, Lggc$1;->a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    invoke-static {v0}, Lggc;->a(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)Ljava/lang/String;

    move-result-object v6

    .line 1152
    :goto_0
    if-eqz v6, :cond_0

    iget-object v0, p0, Lggc$1;->b:Lgfw;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lggc$1;->b:Lgfw;

    iget-object v1, p0, Lggc$1;->a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget-wide v2, v1, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->groupId:J

    .line 1181
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1182
    iget-object v0, v0, Lgfw;->c:Lfp;

    .line 2132
    invoke-virtual {v0, v2, v3}, Lfp;->b(J)V

    .line 1155
    :cond_0
    :goto_1
    iget-object v0, p0, Lggc$1;->c:Landroid/app/Activity;

    iget-object v1, p0, Lggc$1;->b:Lgfw;

    iget-object v2, p0, Lggc$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Lggc$1;->e:Landroid/widget/AbsListView;

    iget-object v4, p0, Lggc$1;->f:Landroid/widget/TextView;

    iget-object v5, p0, Lggc$1;->g:Lggf;

    iget-object v7, p0, Lggc$1;->a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget-object v8, p0, Lggc$1;->h:Ljava/lang/String;

    iget-boolean v9, p0, Lggc$1;->i:Z

    invoke-static/range {v0 .. v9}, Lggc;->a(Landroid/app/Activity;Lgfw;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/AbsListView;Landroid/widget/TextView;Lggf;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Ljava/lang/String;Z)V

    .line 146
    return-void

    .line 1184
    :cond_1
    iget-object v0, v0, Lgfw;->c:Lfp;

    invoke-virtual {v0, v2, v3, v6}, Lfp;->b(JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v6, p1

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lggc$1;->c:Landroid/app/Activity;

    iget-object v1, p0, Lggc$1;->b:Lgfw;

    iget-object v2, p0, Lggc$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Lggc$1;->e:Landroid/widget/AbsListView;

    iget-object v4, p0, Lggc$1;->f:Landroid/widget/TextView;

    iget-object v5, p0, Lggc$1;->g:Lggf;

    iget-object v6, p0, Lggc$1;->a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget-object v6, v6, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->groupName:Ljava/lang/String;

    iget-object v7, p0, Lggc$1;->a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget-object v8, p0, Lggc$1;->h:Ljava/lang/String;

    iget-boolean v9, p0, Lggc$1;->i:Z

    invoke-static/range {v0 .. v9}, Lggc;->a(Landroid/app/Activity;Lgfw;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/AbsListView;Landroid/widget/TextView;Lggf;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Ljava/lang/String;Z)V

    .line 168
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 161
    return-void
.end method
