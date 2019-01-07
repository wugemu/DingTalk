.class public Lcom/alipay/android/app/safepaylog/api/LogItem;
.super Ljava/lang/Object;
.source "LogItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;,
        Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;,
        Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;
    }
.end annotation


# instance fields
.field public final mTemplateInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTraceInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/safepaylog/api/LogItem;->mTraceInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/safepaylog/api/LogItem;->mTemplateInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 13
    return-void
.end method
