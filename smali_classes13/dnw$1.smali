.class final Ldnw$1;
.super Ljava/lang/Object;
.source "LayoutRender.java"

# interfaces
.implements Ldnv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldnw;-><init>(Ldnw$a;Landroid/content/Context;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ListView;Ldnu$b;Ldnu$a;Ldnu$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldnw;


# direct methods
.method constructor <init>(Ldnw;)V
    .locals 0
    .param p1, "this$0"    # Ldnw;

    .prologue
    .line 48
    iput-object p1, p0, Ldnw$1;->a:Ldnw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldnu;)Lldy;
    .locals 1
    .param p1, "context"    # Ldnu;

    .prologue
    .line 51
    new-instance v0, Ldns;

    invoke-direct {v0, p1}, Ldns;-><init>(Ldnu;)V

    return-object v0
.end method
