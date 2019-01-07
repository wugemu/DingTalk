.class final Ljph$1;
.super Ljph$a;
.source "WMLPrefetch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljph;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljph;


# direct methods
.method constructor <init>(Ljph;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljph;
    .param p2, "storageKey"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Ljph$1;->a:Ljph;

    invoke-direct {p0, p1, p2}, Ljph$a;-><init>(Ljph;Ljava/lang/String;)V

    return-void
.end method
