.class final Lflr$4;
.super Ljava/lang/Object;
.source "ContactHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflr;->a(JLjava/lang/String;JLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(JLjava/lang/String;JLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 338
    iput-wide p1, p0, Lflr$4;->a:J

    iput-object p3, p0, Lflr$4;->b:Ljava/lang/String;

    iput-wide p4, p0, Lflr$4;->c:J

    iput-object p6, p0, Lflr$4;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 341
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->d()Lfmo;

    move-result-object v1

    iget-wide v2, p0, Lflr$4;->a:J

    invoke-interface {v1, v2, v3}, Lfmo;->b(J)Lcom/alibaba/android/user/entry/CommonContactEntry;

    move-result-object v7

    .line 342
    .local v7, "existEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    if-eqz v7, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v7, Lcom/alibaba/android/user/entry/CommonContactEntry;->refreshTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 344
    invoke-static {v7}, Lcom/alibaba/android/user/entry/CommonContactEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/CommonContactEntry;)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    move-result-object v0

    .line 345
    .local v0, "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    iget-object v1, p0, Lflr$4;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->contactType:Ljava/lang/String;

    .line 346
    iget-wide v2, p0, Lflr$4;->c:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->modifyTime:J

    .line 347
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->d()Lfmo;

    move-result-object v1

    invoke-interface {v1, v0}, Lfmo;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)I

    .line 348
    iget-object v1, p0, Lflr$4;->d:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.common_contact_change"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 434
    .end local v0    # "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    iget-wide v2, p0, Lflr$4;->a:J

    const-wide/16 v4, 0x0

    new-instance v6, Lflr$4$1;

    invoke-direct {v6, p0}, Lflr$4$1;-><init>(Lflr$4;)V

    invoke-interface/range {v1 .. v6}, Lfac;->a(JJLcma;)V

    goto :goto_0
.end method
