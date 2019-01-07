.class public final Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;
.super Ljava/lang/Object;
.source "HomeScreenRecivier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier$AppBackReceiver;
    }
.end annotation


# static fields
.field private static d:Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/IntentFilter;

.field public c:Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier$AppBackReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->a:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->b:Landroid/content/IntentFilter;

    .line 21
    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->c:Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier$AppBackReceiver;

    .line 26
    return-void
.end method

.method public static a()Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->d:Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;

    invoke-direct {v0}, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;-><init>()V

    sput-object v0, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->d:Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;

    .line 32
    :cond_0
    sget-object v0, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->d:Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;

    return-object v0
.end method
