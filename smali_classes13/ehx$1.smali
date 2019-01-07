.class public final Lehx$1;
.super Ljava/lang/Object;
.source "FocusFloatingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lehx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lehx;


# direct methods
.method public constructor <init>(Lehx;)V
    .locals 0
    .param p1, "this$0"    # Lehx;

    .prologue
    .line 45
    iput-object p1, p0, Lehx$1;->a:Lehx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Lehx$1;->a:Lehx;

    invoke-static {v0}, Lehx;->b(Lehx;)Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    iget-object v1, p0, Lehx$1;->a:Lehx;

    invoke-static {v1}, Lehx;->a(Lehx;)Legs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->a(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
