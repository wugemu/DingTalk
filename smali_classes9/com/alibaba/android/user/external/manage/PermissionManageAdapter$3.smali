.class final Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$3;
.super Ljava/lang/Object;
.source "PermissionManageAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$3;->a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;

    .line 238
    .local v0, "item":Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$3;->a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;->b()J

    move-result-wide v2

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;)V

    .line 239
    const/4 v1, 0x1

    return v1
.end method
