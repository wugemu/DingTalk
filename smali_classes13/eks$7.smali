.class final Leks$7;
.super Ljava/lang/Object;
.source "DocLensProxyImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leks;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Leks;


# direct methods
.method constructor <init>(Leks;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Leks;

    .prologue
    .line 301
    iput-object p1, p0, Leks$7;->b:Leks;

    iput-object p2, p0, Leks$7;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Leks$7;->a:Landroid/app/Activity;

    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Leks$7;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 307
    :cond_0
    return-void
.end method
