.class final Lcod$1;
.super Ljava/lang/Object;
.source "DAULog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcod;->a(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcod;


# direct methods
.method constructor <init>(Lcod;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcod;

    .prologue
    .line 100
    iput-object p1, p0, Lcod$1;->c:Lcod;

    iput-object p2, p0, Lcod$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcod$1;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lcod$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    sget-object v0, Lcod;->a:Ljava/lang/String;

    iget-object v1, p0, Lcod$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcod$1;->c:Lcod;

    invoke-static {v0}, Lcod;->a(Lcod;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcod$1;->c:Lcod;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcod;->a(Lcod;Z)Z

    .line 113
    iget-object v0, p0, Lcod$1;->c:Lcod;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcod;->a(Lcod;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    :cond_2
    :goto_1
    iget-object v0, p0, Lcod$1;->b:[Ljava/lang/String;

    sput-object v0, Lcod;->h:[Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcod$1;->c:Lcod;

    invoke-static {v0}, Lcod;->b(Lcod;)Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->uid:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcod$1;->c:Lcod;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcod;->b(Lcod;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcod$1;->c:Lcod;

    sget-wide v2, Lcod;->i:D

    invoke-static {v0, v2, v3}, Lcod;->a(Lcod;D)D

    .line 126
    iget-object v0, p0, Lcod$1;->c:Lcod;

    sget-wide v2, Lcod;->i:D

    invoke-static {v0, v2, v3}, Lcod;->b(Lcod;D)D

    .line 128
    iget-object v0, p0, Lcod$1;->c:Lcod;

    iget-object v1, p0, Lcod$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcod;->c(Lcod;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_3
    sget-object v0, Lcod;->b:Ljava/lang/String;

    iget-object v1, p0, Lcod$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcod$1;->c:Lcod;

    invoke-static {v0}, Lcod;->a(Lcod;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcod$1;->c:Lcod;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcod;->a(Lcod;Z)Z

    goto :goto_1
.end method
