.class final Lfeu$1;
.super Ljava/lang/Object;
.source "LoadModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

.field final synthetic e:Lcov;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;JLcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lcov;)V
    .locals 1

    .prologue
    .line 92
    iput-object p1, p0, Lfeu$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lfeu$1;->b:Ljava/lang/String;

    iput-wide p3, p0, Lfeu$1;->c:J

    iput-object p5, p0, Lfeu$1;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    iput-object p6, p0, Lfeu$1;->e:Lcov;

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
    .line 95
    iget-object v3, p0, Lfeu$1;->a:Landroid/app/Activity;

    iget-object v4, p0, Lfeu$1;->b:Ljava/lang/String;

    iget-wide v6, p0, Lfeu$1;->c:J

    invoke-static {v3, v4, v6, v7}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 97
    .local v0, "cursor":J
    iget-object v3, p0, Lfeu$1;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, p0, Lfeu$1;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    iput-wide v0, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->cursor:J

    .line 101
    :cond_0
    iget-object v3, p0, Lfeu$1;->a:Landroid/app/Activity;

    const-class v4, Lcov;

    iget-object v5, p0, Lfeu$1;->e:Lcov;

    invoke-static {v3, v4, v5}, Lffk;->a(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcov;

    .line 102
    .local v2, "listener1":Lcov;, "Lcov<Ljava/lang/Long;>;"
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Lcov;->a(Ljava/lang/Object;)V

    .line 103
    return-void
.end method
