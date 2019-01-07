.class final Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;
.super Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;
.source "PermissionManageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

.field final synthetic b:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;Ljava/lang/String;Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;)V
    .locals 0
    .param p2, "tip"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;->b:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;Ljava/lang/String;)V

    .line 388
    iput-object p3, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;->a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    .line 389
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;->a:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->getValue()I

    move-result v0

    return v0
.end method
