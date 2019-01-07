.class public final Lfdv;
.super Lfds;
.source "CircleNoticeDataSourceImpl.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfdv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfds",
        "<",
        "Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;",
        "Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;

    invoke-direct {p0, v0}, Lfds;-><init>(Ljava/lang/Class;)V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lfdv;-><init>()V

    return-void
.end method

.method public static a()Lfdv;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lfdv$a;->a()Lfdv;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "tb_connection_notice_data"

    return-object v0
.end method

.method protected final synthetic d()Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;
    .locals 1

    .prologue
    .line 1033
    new-instance v0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;-><init>()V

    .line 12
    return-object v0
.end method
