.class final enum Lorg/jsoup/parser/TokeniserState$8;
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
    .line 139
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
    .line 142
    invoke-virtual {p2}, Llem;->b()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 153
    invoke-virtual {p2}, Llem;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lles;->a(Z)Lorg/jsoup/parser/Token$g;

    .line 155
    sget-object v0, Lorg/jsoup/parser/TokeniserState$8;->TagName:Lorg/jsoup/parser/TokeniserState;

    .line 1113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 163
    :goto_0
    return-void

    .line 144
    :sswitch_0
    sget-object v0, Lorg/jsoup/parser/TokeniserState$8;->MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 147
    :sswitch_1
    sget-object v0, Lorg/jsoup/parser/TokeniserState$8;->EndTagOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 150
    :sswitch_2
    sget-object v0, Lorg/jsoup/parser/TokeniserState$8;->BogusComment:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 158
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lles;->a(C)V

    .line 159
    sget-object v0, Lorg/jsoup/parser/TokeniserState$8;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x2f -> :sswitch_1
        0x3f -> :sswitch_2
    .end sparse-switch
.end method
