.class public Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
.super Ljava/lang/Object;
.source "FlowControl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/flowcontrol/FlowControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlowControlInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f5d1a48138d31b7L


# instance fields
.field public bizId:Ljava/lang/String;

.field public delayTime:J

.field public expireTime:J

.field public serviceId:Ljava/lang/String;

.field public startTime:J

.field public status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V
    .locals 4
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "bizId"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "delayTime"    # J
    .param p6, "expireTime"    # J
    .param p8, "startTime"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->serviceId:Ljava/lang/String;

    .line 181
    iput-object p2, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->bizId:Ljava/lang/String;

    .line 182
    iput p3, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->status:I

    .line 183
    iput-wide p4, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    .line 184
    cmp-long v2, p6, v0

    if-lez v2, :cond_0

    .end local p6    # "expireTime":J
    :goto_0
    iput-wide p6, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->expireTime:J

    .line 185
    cmp-long v2, p8, v0

    if-lez v2, :cond_1

    .end local p8    # "startTime":J
    :goto_1
    iput-wide p8, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->startTime:J

    .line 186
    return-void

    .restart local p6    # "expireTime":J
    .restart local p8    # "startTime":J
    :cond_0
    move-wide p6, v0

    .line 184
    goto :goto_0

    .end local p6    # "expireTime":J
    :cond_1
    move-wide p8, v0

    .line 185
    goto :goto_1
.end method


# virtual methods
.method public isExpired()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->startTime:J

    iget-wide v4, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->expireTime:J

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "flow ctrl serviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " bizId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->bizId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " delayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " expireTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->expireTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
