.class final Loz$1;
.super Ljava/lang/Object;
.source "TrackLoop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loz;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Loz;


# direct methods
.method constructor <init>(Loz;)V
    .locals 0
    .param p1, "this$0"    # Loz;

    .prologue
    .line 98
    iput-object p1, p0, Loz$1;->a:Loz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Loz$1;->a:Loz;

    invoke-static {v0}, Loz;->a(Loz;)Low;

    move-result-object v0

    .line 1277
    iget-object v0, v0, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 101
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->b()V

    .line 102
    return-void
.end method
