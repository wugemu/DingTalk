.class final Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;
.super Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;
.source "PermissionManageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:J

.field final synthetic e:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p2, "id"    # J
    .param p4, "orgName"    # Ljava/lang/String;
    .param p5, "avatarMediaId"    # Ljava/lang/String;
    .param p6, "isFollower"    # Z

    .prologue
    .line 324
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;->e:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;B)V

    .line 325
    iput-wide p2, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;->d:J

    .line 326
    iput-boolean p6, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;->a:Z

    .line 327
    iput-object p4, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;->b:Ljava/lang/String;

    .line 328
    iput-object p5, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;->c:Ljava/lang/String;

    .line 329
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->Contact:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

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
    .line 358
    iget-wide v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;->d:J

    return-wide v0
.end method
