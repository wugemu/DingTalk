.class final Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$b;
.super Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;
.source "PermissionManageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

.field final synthetic b:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)V
    .locals 1
    .param p2, "orgDeptObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$b;->b:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;B)V

    .line 299
    iput-object p2, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$b;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 300
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->Department:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->getValue()I

    move-result v0

    return v0
.end method

.method final b()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$b;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    return-wide v0
.end method
