.class abstract Ljph$a;
.super Ljava/lang/Object;
.source "WMLPrefetch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Ljph;


# direct methods
.method public constructor <init>(Ljph;Ljava/lang/String;)V
    .locals 0
    .param p2, "storageKey"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Ljph$a;->b:Ljph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Ljph$a;->a:Ljava/lang/String;

    .line 141
    return-void
.end method
