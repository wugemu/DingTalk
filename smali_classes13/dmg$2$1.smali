.class final Ldmg$2$1;
.super Ljava/lang/Object;
.source "ChaosSceneRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldmg$2;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldmg$2;


# direct methods
.method constructor <init>(Ldmg$2;)V
    .locals 0
    .param p1, "this$1"    # Ldmg$2;

    .prologue
    .line 113
    iput-object p1, p0, Ldmg$2$1;->a:Ldmg$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ldmg$2$1;->a:Ldmg$2;

    invoke-virtual {v0}, Ldmg$2;->c()V

    .line 117
    return-void
.end method
