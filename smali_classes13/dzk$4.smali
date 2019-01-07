.class final Ldzk$4;
.super Lcom/google/gson/reflect/TypeToken;
.source "VoiceRecordImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldzk;->d()Ljava/lang/reflect/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lduk;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldzk;


# direct methods
.method constructor <init>(Ldzk;)V
    .locals 0
    .param p1, "this$0"    # Ldzk;

    .prologue
    .line 429
    iput-object p1, p0, Ldzk$4;->a:Ldzk;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
