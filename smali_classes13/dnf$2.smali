.class final Ldnf$2;
.super Ljava/lang/Object;
.source "MdPreparser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldnf;->a(Ldnf$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldnf$a;

.field final synthetic b:Ldnf;


# direct methods
.method constructor <init>(Ldnf;Ldnf$a;)V
    .locals 0
    .param p1, "this$0"    # Ldnf;

    .prologue
    .line 161
    iput-object p1, p0, Ldnf$2;->b:Ldnf;

    iput-object p2, p0, Ldnf$2;->a:Ldnf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Ldnf$2;->a:Ldnf$a;

    invoke-interface {v0}, Ldnf$a;->a()V

    .line 165
    return-void
.end method
