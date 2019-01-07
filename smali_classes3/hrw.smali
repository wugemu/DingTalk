.class public Lhrw;
.super Ljava/lang/Object;
.source "PopupDropListManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhrw$c;,
        Lhrw$a;,
        Lhrw$b;
    }
.end annotation


# static fields
.field private static volatile b:Lhrw;


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method static synthetic a(Lhrw;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 1
    .param p0, "x0"    # Lhrw;

    .prologue
    .line 34
    iget-object v0, p0, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    return-object v0
.end method

.method public static a()Lhrw;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lhrw;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lhrw;->b:Lhrw;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lhrw;

    invoke-direct {v0}, Lhrw;-><init>()V

    sput-object v0, Lhrw;->b:Lhrw;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    sget-object v0, Lhrw;->b:Lhrw;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
