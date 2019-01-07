.class final Lcmq$6;
.super Ljava/lang/Object;
.source "CustomThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmq;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcmq$a;

.field final synthetic b:Lcmq;


# direct methods
.method constructor <init>(Lcmq;Lcmq$a;)V
    .locals 0
    .param p1, "this$0"    # Lcmq;

    .prologue
    .line 437
    iput-object p1, p0, Lcmq$6;->b:Lcmq;

    iput-object p2, p0, Lcmq$6;->a:Lcmq$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcmq$6;->a:Lcmq$a;

    invoke-interface {v0}, Lcmq$a;->a()V

    .line 441
    return-void
.end method
