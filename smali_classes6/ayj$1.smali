.class final Layj$1;
.super Ljava/lang/Object;
.source "EditMeetingRecorderAdapter.java"

# interfaces
.implements Lbio$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layj;-><init>(Landroid/app/Activity;Ljava/util/List;JLayj$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layj$a;

.field final synthetic b:Layj;


# direct methods
.method constructor <init>(Layj;Layj$a;)V
    .locals 0
    .param p1, "this$0"    # Layj;

    .prologue
    .line 37
    iput-object p1, p0, Layj$1;->b:Layj;

    iput-object p2, p0, Layj$1;->a:Layj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 40
    iget-object v0, p0, Layj$1;->b:Layj;

    invoke-static {v0, p1, p2}, Layj;->a(Layj;J)J

    .line 41
    iget-object v0, p0, Layj$1;->b:Layj;

    invoke-virtual {v0}, Layj;->notifyDataSetChanged()V

    .line 42
    iget-object v0, p0, Layj$1;->a:Layj$a;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Layj$1;->a:Layj$a;

    invoke-interface {v0}, Layj$a;->a()V

    .line 45
    :cond_0
    return-void
.end method
