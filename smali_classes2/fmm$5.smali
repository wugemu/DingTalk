.class final Lfmm$5;
.super Ljava/lang/Object;
.source "AddCustomerMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfmm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfmm;


# direct methods
.method constructor <init>(Lfmm;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfmm;

    .prologue
    .line 206
    iput-object p1, p0, Lfmm$5;->b:Lfmm;

    iput-object p2, p0, Lfmm$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "timeStamp":Ljava/lang/String;
    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "BusinessCard"

    aput-object v6, v5, v8

    aput-object v3, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "businessCardValue":Ljava/lang/String;
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v5

    invoke-virtual {v5}, Lfmz;->f()Lfmq;

    move-result-object v2

    .line 214
    .local v2, "dataDao":Lfmq;
    if-eqz v2, :cond_0

    .line 215
    iget-object v5, p0, Lfmm$5;->a:Ljava/lang/String;

    invoke-interface {v2, v1, v5}, Lfmq;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 219
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    sget-object v5, Lezh;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 220
    const-string/jumbo v5, "corpId="

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-object v6, p0, Lfmm$5;->b:Lfmm;

    invoke-static {v6}, Lfmm;->d(Lfmm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 221
    const-string/jumbo v5, "&nameCardKey="

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 222
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "url":Ljava/lang/String;
    invoke-static {}, Lfmm;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lfmm$5;->a:Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    invoke-static {}, Lfmm;->c()Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/String;

    iget-object v6, p0, Lfmm$5;->a:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object v4, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 225
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v5

    iget-object v6, p0, Lfmm$5;->b:Lfmm;

    invoke-static {v6}, Lfmm;->e(Lfmm;)Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method
