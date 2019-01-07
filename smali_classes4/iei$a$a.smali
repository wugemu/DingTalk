.class final Liei$a$a;
.super Ljava/lang/Object;
.source "AudioFocusSwitch.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liei$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Liei$a;


# direct methods
.method private constructor <init>(Liei$a;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Liei$a$a;->a:Liei$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Liei$a;B)V
    .locals 0
    .param p1, "x0"    # Liei$a;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Liei$a$a;-><init>(Liei$a;)V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 71
    iget-object v0, p0, Liei$a$a;->a:Liei$a;

    invoke-virtual {v0, p1}, Liei$a;->a(I)V

    .line 72
    return-void
.end method
