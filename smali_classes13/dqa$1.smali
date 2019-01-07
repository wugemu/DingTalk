.class final Ldqa$1;
.super Ljava/lang/Object;
.source "DynamicDefaultEmotionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldqa;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldqa;


# direct methods
.method constructor <init>(Ldqa;)V
    .locals 0
    .param p1, "this$0"    # Ldqa;

    .prologue
    .line 106
    iput-object p1, p0, Ldqa$1;->a:Ldqa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ldqa$1;->a:Ldqa;

    invoke-static {v0}, Ldqa;->a(Ldqa;)V

    .line 110
    iget-object v0, p0, Ldqa$1;->a:Ldqa;

    invoke-static {v0}, Ldqa;->b(Ldqa;)V

    .line 111
    return-void
.end method
