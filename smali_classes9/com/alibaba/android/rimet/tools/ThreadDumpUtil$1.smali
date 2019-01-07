.class public final Lcom/alibaba/android/rimet/tools/ThreadDumpUtil$1;
.super Ljava/lang/Object;
.source "ThreadDumpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/android/rimet/tools/ThreadDumpUtil$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/rimet/tools/ThreadDumpUtil$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lelv;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method
