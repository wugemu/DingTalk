.class final Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$1;
.super Ljava/lang/Object;
.source "PermissionManageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;

.field final synthetic b:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$1;->b:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    iput-object p2, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;

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
    .line 200
    new-instance v0, Lfjl;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$1;->b:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lfjl;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;

    .line 1358
    iget-wide v2, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;->d:J

    .line 200
    invoke-virtual {v0, v2, v3}, Lfjl;->a(J)V

    .line 201
    return-void
.end method
