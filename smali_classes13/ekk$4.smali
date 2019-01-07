.class final Lekk$4;
.super Ljava/lang/Object;
.source "ImageFormatConvertHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lekk;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lekk;


# direct methods
.method constructor <init>(Lekk;)V
    .locals 0
    .param p1, "this$0"    # Lekk;

    .prologue
    .line 145
    iput-object p1, p0, Lekk$4;->a:Lekk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lekk$4;->a:Lekk;

    .line 1023
    iget-object v0, v0, Lekk;->c:Lekk$a;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lekk$4;->a:Lekk;

    .line 2023
    iget-object v0, v0, Lekk;->c:Lekk$a;

    .line 149
    invoke-interface {v0}, Lekk$a;->b()V

    .line 151
    :cond_0
    return-void
.end method
