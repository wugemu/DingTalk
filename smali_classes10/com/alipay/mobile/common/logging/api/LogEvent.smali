.class public Lcom/alipay/mobile/common/logging/api/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected category:Ljava/lang/String;

.field protected level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field protected message:Ljava/lang/String;

.field protected tag:Ljava/lang/String;

.field protected timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->category:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->tag:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 46
    iput-object p4, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->timeStamp:J

    .line 48
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->timeStamp:J

    return-wide v0
.end method

.method public isIllegal()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getLevel()Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->category:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setLevel(Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 67
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->tag:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->timeStamp:J

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    return-object v0
.end method
