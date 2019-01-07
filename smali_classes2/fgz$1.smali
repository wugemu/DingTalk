.class final Lfgz$1;
.super Ljava/lang/Object;
.source "ContactHeaderViewHolder.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgz;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lfhi$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfgz;


# direct methods
.method constructor <init>(Lfgz;)V
    .locals 0
    .param p1, "this$0"    # Lfgz;

    .prologue
    .line 180
    iput-object p1, p0, Lfgz$1;->a:Lfgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 188
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 180
    check-cast p1, Lfhi$a;

    .line 1183
    iget-object v0, p0, Lfgz$1;->a:Lfgz;

    invoke-static {v0, p1}, Lfgz;->a(Lfgz;Lfhi$a;)V

    .line 180
    return-void
.end method
