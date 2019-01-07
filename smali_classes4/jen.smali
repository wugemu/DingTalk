.class public Ljen;
.super Ljava/lang/Object;
.source "BasicLogHandler.java"


# static fields
.field protected static a:Ljen;


# instance fields
.field protected b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljen;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Ljen;->a:Ljen;

    if-eqz v0, :cond_0

    sget-object v0, Ljen;->a:Ljen;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1, p2}, Ljen;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljej;Z)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected a(Ljej;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
