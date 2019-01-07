.class final Lhca$6;
.super Ljava/lang/Object;
.source "AlbumModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhca;->a(ZLhca$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhca;


# direct methods
.method constructor <init>(Lhca;)V
    .locals 0
    .param p1, "this$0"    # Lhca;

    .prologue
    .line 883
    iput-object p1, p0, Lhca$6;->a:Lhca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lhca$6;->a:Lhca;

    invoke-static {v0}, Lhca;->a(Lhca;)V

    .line 887
    return-void
.end method
