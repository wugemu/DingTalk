.class final Lcom/alibaba/android/dingtalk/alpha/AlphaManager$5;
.super Ljava/lang/Object;
.source "AlphaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/alpha/AlphaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$5;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 376
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a()V

    .line 377
    return-void
.end method
