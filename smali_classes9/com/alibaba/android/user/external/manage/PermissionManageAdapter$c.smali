.class Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;
.super Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;
.source "PermissionManageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;Ljava/lang/String;)V
    .locals 1
    .param p2, "tip"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;->d:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;B)V

    .line 366
    iput-object p2, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;->c:Ljava/lang/String;

    .line 367
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->Divider:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

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
    .line 379
    const-wide/16 v0, 0x0

    return-wide v0
.end method
