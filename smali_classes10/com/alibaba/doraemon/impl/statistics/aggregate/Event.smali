.class public abstract Lcom/alibaba/doraemon/impl/statistics/aggregate/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field public mEventName:Ljava/lang/String;

.field public mModuleName:Ljava/lang/String;

.field public mStart:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/Event;->mModuleName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/Event;->mEventName:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/Event;->mStart:J

    .line 46
    return-void
.end method
