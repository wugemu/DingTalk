.class final Lcom/alibaba/android/rimet/biz/AboutActivity$3$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/AboutActivity$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/AboutActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/AboutActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/AboutActivity$3;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/AboutActivity$3$1;->a:Lcom/alibaba/android/rimet/biz/AboutActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 201
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/AboutActivity$3$1;->a:Lcom/alibaba/android/rimet/biz/AboutActivity$3;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/AboutActivity$3;->a:Lcom/alibaba/android/rimet/biz/AboutActivity;

    invoke-static {v2}, Lcms;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 204
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v0, v6, v2, v7}, Lhzt;->a(Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 208
    .local v1, "date1":Ljava/util/Date;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {v1, v6, v2, v7}, Lhzt;->a(Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v1    # "date1":Ljava/util/Date;
    :goto_0
    return-void

    .line 210
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 212
    .restart local v0    # "date":Ljava/util/Date;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v0, v6, v2, v7}, Lhzt;->a(Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
