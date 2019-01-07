.class final Lews$1$1;
.super Ljava/lang/Object;
.source "TeleFloatingConfManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lews$1;->a(Lcjo$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lews$1;


# direct methods
.method constructor <init>(Lews$1;)V
    .locals 0
    .param p1, "this$1"    # Lews$1;

    .prologue
    .line 129
    iput-object p1, p0, Lews$1$1;->a:Lews$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 132
    sget v0, Leuj$l;->conf_txt_already_terminated:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 133
    return-void
.end method
