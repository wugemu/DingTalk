.class final Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a$1;
.super Ljava/lang/Object;
.source "PermissionManageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 400
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;

    .line 1383
    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;->a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    .line 400
    sget-object v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->ActionAddFollower:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    if-ne v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;->b:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .line 2310
    const-string/jumbo v1, "IDENTIFY_EXTERNAL_PERM_UPDATE_FOLLOWER"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 406
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;->b:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .line 2315
    const-string/jumbo v1, "IDENTIFY_EXTERNAL_PERM_SHARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
