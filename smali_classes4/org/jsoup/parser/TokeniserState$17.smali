.class final enum Lorg/jsoup/parser/TokeniserState$17;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 1
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    .prologue
    .line 323
    invoke-virtual {p2}, Llem;->c()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 333
    const-string/jumbo v0, "<"

    invoke-virtual {p1, v0}, Lles;->a(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Llem;->d()V

    .line 335
    sget-object v0, Lorg/jsoup/parser/TokeniserState$17;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 337
    :goto_0
    return-void

    .line 1217
    :sswitch_0
    iget-object v0, p1, Lles;->g:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token;->a(Ljava/lang/StringBuilder;)V

    .line 326
    sget-object v0, Lorg/jsoup/parser/TokeniserState$17;->ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 329
    :sswitch_1
    const-string/jumbo v0, "<!"

    invoke-virtual {p1, v0}, Lles;->a(Ljava/lang/String;)V

    .line 330
    sget-object v0, Lorg/jsoup/parser/TokeniserState$17;->ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method
