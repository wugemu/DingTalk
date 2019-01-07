.class public final Lbpd;
.super Lbpa;
.source "CircleNoticeDataSourceImpl.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbpd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbpa",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;

    invoke-direct {p0, v0}, Lbpa;-><init>(Ljava/lang/Class;)V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lbpd;-><init>()V

    return-void
.end method

.method public static e()Lbpd;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lbpd$a;->a()Lbpd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "tb_circle_notice_data"

    return-object v0
.end method

.method protected final synthetic b()Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
    .locals 1

    .prologue
    .line 1033
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;-><init>()V

    .line 12
    return-object v0
.end method
